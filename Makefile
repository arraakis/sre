
all: add commit push

status:
	git status

add:
	git add .

commit:
	@read -p "Write a Git Commit Message :" comment; \
	git commit -m "$$comment"

push:
	git push