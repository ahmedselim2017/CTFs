#/bin/sh

file="37366.zip"

while true;
do
    new_file=$(zipinfo $file | grep "\--" | awk '{print $9}')
    pass=$(echo $new_file | cut -d'.' -f1)
    unzip -P $pass $file
    file=$new_file
    echo "$file --> $new_file"
done

#6969.zip sifre --> letmeinplease
