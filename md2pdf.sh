#Required: inotify-tools, pandoc
#TODO: check if no argument 

#content=$(echo $1 | sed "s/-----/<\/section><section data-markdown>/g" )
#cat $1 | sed "s/-----/bla/g")

echo "md to pdf compiler started"
while true 
do 
   inotifywait -e close_write $1 
   #sed "s/-----/<\/section><section data-markdown>/g" $1 > tmp.md
   pandoc $1 -o $1.pdf --latex-engine=xelatex -V mainfont="WenQuanYi Micro Hei"
   echo "Compiled $1 to $1.html"
done

#This has a big limitation: if some program replaces myfile.py with a different file, rather than writing to the existing myfile, inotifywait will die. Most editors work that way.

#To overcome this limitation, use inotifywait on the directory:

#while true; do
#   change=$(inotifywait -e close_write,moved_to,create .)
#     change=${change#./ * }
#    if [ "$change" = "myfile.py" ]; then ./myfile.py; fi
# done

