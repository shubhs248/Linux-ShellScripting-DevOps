#!/usr/bin/env bash
#
# setup.sh — prepares the practice lab.
#   • (re)generates the sample datasets in data/ so you always have a clean copy
#   • makes every exercise/solution script executable
#
# Usage:  bash setup.sh
#
set -euo pipefail

# Always work from the repo root (the folder this script lives in)
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

echo "==> Linux & Shell Scripting Practice Lab — setup"
echo "    Working directory: $ROOT_DIR"

mkdir -p data

# ---------------------------------------------------------------------------
# 1. employees.csv  — id,name,department,salary,age
# ---------------------------------------------------------------------------
cat > data/employees.csv <<'CSV'
id,name,department,salary,age
101,Aarav Sharma,Engineering,95000,29
102,Priya Patel,Engineering,120000,34
103,Rohan Mehta,Sales,55000,41
104,Sneha Iyer,Marketing,62000,27
105,Vikram Singh,Engineering,88000,38
106,Ananya Rao,Sales,47000,23
107,Karan Gupta,Finance,73000,45
108,Meera Nair,Marketing,58000,31
109,Aditya Verma,Finance,99000,52
110,Diya Joshi,Engineering,135000,40
111,Arjun Reddy,Sales,51000,26
112,Isha Kapoor,HR,49000,33
113,Nikhil Das,Engineering,78000,30
114,Tara Menon,HR,67000,48
115,Rahul Bose,Finance,82000,37
CSV

# ---------------------------------------------------------------------------
# 2. numbers.txt — one integer per line
# ---------------------------------------------------------------------------
cat > data/numbers.txt <<'NUM'
42
17
8
99
23
56
4
71
38
60
15
88
3
27
50
NUM

# ---------------------------------------------------------------------------
# 3. servers.txt — hostname status port
# ---------------------------------------------------------------------------
cat > data/servers.txt <<'SRV'
# hostname status port
web-01 up 80
web-02 up 80
web-03 down 80
db-01 up 5432
db-02 down 5432
cache-01 up 6379
queue-01 up 5672
api-01 down 8080
api-02 up 8080
monitor-01 up 9090
SRV

# ---------------------------------------------------------------------------
# 4. access.log — Apache/Nginx-style combined log
# ---------------------------------------------------------------------------
cat > data/access.log <<'LOG'
192.168.1.10 - - [17/Jun/2026:09:01:12 +0530] "GET /index.html HTTP/1.1" 200 1024
192.168.1.11 - - [17/Jun/2026:09:01:15 +0530] "GET /style.css HTTP/1.1" 200 512
192.168.1.10 - - [17/Jun/2026:09:01:20 +0530] "GET /api/users HTTP/1.1" 500 256
192.168.1.12 - - [17/Jun/2026:09:02:01 +0530] "POST /api/login HTTP/1.1" 401 128
192.168.1.13 - - [17/Jun/2026:09:02:30 +0530] "GET /missing.html HTTP/1.1" 404 64
192.168.1.10 - - [17/Jun/2026:09:03:11 +0530] "GET /dashboard HTTP/1.1" 200 2048
192.168.1.14 - - [17/Jun/2026:09:03:45 +0530] "GET /api/orders HTTP/1.1" 500 256
192.168.1.11 - - [17/Jun/2026:09:04:02 +0530] "GET /favicon.ico HTTP/1.1" 404 64
192.168.1.12 - - [17/Jun/2026:09:04:50 +0530] "POST /api/login HTTP/1.1" 200 128
192.168.1.15 - - [17/Jun/2026:09:05:10 +0530] "GET /api/report HTTP/1.1" 503 256
192.168.1.10 - - [17/Jun/2026:09:05:33 +0530] "GET /index.html HTTP/1.1" 200 1024
192.168.1.13 - - [17/Jun/2026:09:06:01 +0530] "DELETE /api/users/9 HTTP/1.1" 403 96
192.168.1.16 - - [17/Jun/2026:09:06:40 +0530] "GET /api/health HTTP/1.1" 200 32
192.168.1.14 - - [17/Jun/2026:09:07:12 +0530] "GET /api/orders HTTP/1.1" 500 256
192.168.1.12 - - [17/Jun/2026:09:07:55 +0530] "GET /api/products HTTP/1.1" 200 4096
192.168.1.11 - - [17/Jun/2026:09:08:20 +0530] "GET /missing.html HTTP/1.1" 404 64
192.168.1.17 - - [17/Jun/2026:09:08:44 +0530] "POST /api/checkout HTTP/1.1" 500 256
192.168.1.10 - - [17/Jun/2026:09:09:05 +0530] "GET /dashboard HTTP/1.1" 200 2048
192.168.1.15 - - [17/Jun/2026:09:09:38 +0530] "GET /api/report HTTP/1.1" 200 8192
192.168.1.13 - - [17/Jun/2026:09:10:00 +0530] "GET /api/health HTTP/1.1" 200 32
LOG

echo "==> Datasets written to data/ ($(ls -1 data | wc -l | tr -d ' ') files)"

# ---------------------------------------------------------------------------
# Make all practice scripts executable
# ---------------------------------------------------------------------------
find . -name "*.sh" -type f -exec chmod +x {} \; 2>/dev/null || true
echo "==> All .sh scripts marked executable"

echo
echo "Setup complete. Start with:"
echo "    cat 01-essential-commands/README.md"
