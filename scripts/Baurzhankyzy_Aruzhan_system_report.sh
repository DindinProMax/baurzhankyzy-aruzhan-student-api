LOG_FILE="logs/Baurzhankyzy_Aruzhan_system_report.log"
mkdir -p logs
generate_report() {
    echo "=========================================="
    echo "       SYSTEM MONITORING REPORT           "
    echo "=========================================="
    echo "Student Name: Baurzhankyzy Aruzhan"
    echo "Date & Time:  $(date '+%Y-%m-%d %H:%M:%S')"
    echo "Username:     $(whoami)"
    echo "OS & Kernel:  $(uname -s -r -v)"
    echo "------------------------------------------"
    echo "CPU & Memory Information:"
    echo "------------------------------------------"
    lscpu | grep "Model name\|CPU(s):" || uname -p
    echo ""
    free -h
    echo "------------------------------------------"
    echo "Disk Usage & Available Space:"
    echo "------------------------------------------"
    df -h /
    echo "=========================================="
}
generate_report | tee -a "$LOG_FILE"
