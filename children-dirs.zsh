_children_dirs()
{
    find . ! -path . -type d -name "*${words[CURRENT]}*" -printf "%P\n" \
        | while read -r line; do
      compadd -U -X "Subdirectories: " "$line"
    done
    compstate[insert]=menu # no expand
}
ccd() { cd $1 }

compdef _children_dirs ccd
