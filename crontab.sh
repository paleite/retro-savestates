case "$1" in
	5min)
		git push -u origin master;
		;;
	daily)
		git add .; ./romnames.sh | sed -e 's/([^()]*)//g' | uniq | sort | printf "Updated saves:\n$(cat -)\n" | git commit -F -; git push -u origin master;
		;;
esac
