while true do{
    git add .
    git commit -m "Auto commit: $(date)"
    git push
    sleep 180
}