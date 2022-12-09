
all: add commit push

status:
	git status

add:
	git add .

commit:
	@read -p "comments :" comment; \
	git commit -m "$$comment"

push:
	git push