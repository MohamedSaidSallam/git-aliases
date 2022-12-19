#!/bin/bash

tempFile=add_aliases.sh.temp

echo "#!/bin/bash" > $tempFile
echo  >> $tempFile

chmod +x $tempFile

tail -n+2 .gitconfig | while IFS="" read -r line || [ -n "$line" ]
do
    line="$(echo -e "${line}" |  sed -e 's/^[[:space:]]*//')"

    if [ -z "$line" ]; then
        echo >> $tempFile
        continue
    fi

    quotedCommand=${line#*= }
    command=${quotedCommand:1}
    command=${command::-2}
    command=${command//\'/\\\'}
    command=${command//\\\"/\"}
    command=${command//\\n/\\\\n}
    aliasText=${line%"= $quotedCommand"}

    printf '%s\n' "git config --global alias.$aliasText \$'$command'" >> $tempFile
done