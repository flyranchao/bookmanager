#!/bin/bash
cur_dir = ""
debug_printf(){
    echo "Hello Bug!"
}
get_cur_dir(){
    cur_dir = $(basename $(pwd))
}

bor(){
    get_cur_dir
    if ["xbooks" =　"x$cur_dir"]; then
        echo "Q">>"$1"&& git add -u && git commit -m "borrowed $1" && git push origin master
    else
        echo "use this command in books dir please"
    fi
}

fb(){
    get_cur_dir
    if ["xbooks" = "x$cur_dir"]; then
        cnt='ls | grep $1 | tee tmp |wc -l'
        xcnt=1
        while [$xcnt -le $cnt]; do
            xstr='sed -n ${xcnt}p tmp'
            git log -1 --color --pretty=format:'%s %C(green)<%an>' $xstr
            ((xcnt++))
        done
    fi
}
    
