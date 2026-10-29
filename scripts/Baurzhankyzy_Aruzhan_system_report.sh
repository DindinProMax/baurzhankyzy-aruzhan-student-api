LOG_FILE="logs/Baurzhankyzy_Aruzhan_system_report.log"
{
    echo "======================================"
    echo "Student Name: Aruzhan Baurzhankyzy"
    echo "Date & Time: $(date)"
    echo "Username: $(whoami)"
    echo "OS Kernel: $(uname -s -r)"
    echo "CPU Info: $(lscpu | grep 'Model name' | cut -d: -f2 | xargs 2>/dev/null || uname -m)"
    echo "Memory Info:"
    free -h
    echo "Disk Usage:"
    df -h /
    echo "======================================"
} >> "$LOG_FILE"
echo "Report appended to $LOG_FILE"
