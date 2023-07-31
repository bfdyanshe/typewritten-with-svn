tw_check_svn()
{
    local svn_info=$(svn info 2>&1 | grep "^svn: E")

    if [[ $svn_info == "" ]]; then
        echo "true"
    else
        echo "false"
    fi
}

tw_get_revision()
{
    echo "$(LANG= svn info 2>/dev/null)" |sed -n 's/Revision: //p'
}

tw_svn_prompt()
{
    svn_prompt_info
}