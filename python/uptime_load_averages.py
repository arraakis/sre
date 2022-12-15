#!/usr/bin/python
from datetime import datetime
import time
from influxdb_client import InfluxDBClient, Point, WritePrecision
from influxdb_client.client.write_api import SYNCHRONOUS
import random
import paramiko 
import sys
import os

username = os.getenv('USRNAME')
password = os.getenv('PASSWORD')

time_nanosec = time.time_ns()
def write_to_influx(loadavg):
    # You can generate a Token from the "Tokens Tab" in the UI
    token = "80h-YW0HtGuahQw11T8mxyB05C6Y2iAnBfA7lVfcJqGGTVZ3uWru79PqRq978Wdiu527HmbXpk0DnPPV3XpQpA=="
    org = "self"
    bucket = "uptime"
    client = InfluxDBClient(url="http://localhost:8086", token=token)

    write_api = client.write_api(write_options=SYNCHRONOUS)
    data = loadavg
    write_api.write(bucket, org, data, time_precision='ms', protocol='line')
    

# parallel -j 2 -a hosts ./pi-uptime.pl {}
def system_load(host):
    res = []
    server = ''
    # print(host)
    client = paramiko.client.SSHClient()
    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

    
    client.connect(host, username=username, password=password)
    std_in, std_out,std_error = client.exec_command("uptime")
    load_avg = std_out.read().decode().split(': ')
    # print(load_avg[1].split(','))
    minute_one, minute_five, minute_fifteen = load_avg[1].split(',')
    # print(minute_one, minute_five, minute_fifteen)
    
    if '29' in host:
        server = 'pi4'
    else:
        server = 'pi3'
    data = f"loadavg,host={server},ip='{host}' minute1={minute_one.strip()}, minute5={minute_five.strip()}, minute15={minute_fifteen.strip()} {time_nanosec}"
    res.append(data)
    print(res)
    write_to_influx(res)
    

    client.close()

    





if __name__ == '__main__':
    system_load(sys.argv[1])