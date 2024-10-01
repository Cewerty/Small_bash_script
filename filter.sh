firstword=''
secondword=''
answer=''
path_for_file=''
read -p "Enter name or path of file: " path_for_file
read -p "Enter first word: " firstword 
read -p "Enter second word: " secondword
if [ -z "$path_for_file" ] || [ -z "$firstword" ] || [ -z "$secondword" ]; then echo "Wrong input"; exit 1; fi
answer=$(grep -i "$firstword" "$path_for_file" | grep -i "$secondword")
if [ -z "$answer" ]; then echo "Nothing found"; exit 1; fi
echo "Answer: $answer"
