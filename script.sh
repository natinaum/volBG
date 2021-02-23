amixer sget Master | tail -n 1 | cut -d"[" -f2| cut -d"]" -f1|tr -d %|sed "s/^100$/90/"|sed "s/^.$/0&/"|sed "s/.$//"| sed "s/.*/images\/&\.jpg/"|xargs feh --bg-fill

if [ -z $1 ]; then
	watch -n 0.5 ./script.sh started
fi
