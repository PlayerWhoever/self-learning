if [ $# -eq 0 ]; then
  echo "no parameters given"
elif [ $1 == "name" ];then
  ls | sort
elif [ $1 == "size" ];then
  ls -laS
elif [ $1 == "type" ];then
  ls --group-directories-first
elif [ $1 == "time" ]; then
  ls -l -r --sort=time
else
 echo "use parameters: name/type/size/time to explore files in a sorted order"
fi