<div align="center">

# 🐉 100 Essential Kali Linux Commands

### An Interactive, Visual & Ethical-Hacking Field Guide

<p>
  <strong>Learn the command.</strong>
  <strong>Understand the syntax.</strong>
  <strong>See the output.</strong>
  <strong>Practice safely.</strong>
</p>

<br>

[![Commands](https://img.shields.io/badge/Commands-100-e8a94a?style=for-the-badge)](#-100-command-catalog)
[![Categories](https://img.shields.io/badge/Categories-5-5b8def?style=for-the-badge)](#-command-categories)
[![HTML](https://img.shields.io/badge/Built%20with-HTML%2FCSS%2FJS-38d6cc?style=for-the-badge\&logo=html5\&logoColor=white)](#-project-structure)
[![Ethical](https://img.shields.io/badge/Focus-Ethical%20Security-00b894?style=for-the-badge)](#-ethics--responsible-use)
[![License](https://img.shields.io/badge/License-MIT-lightgrey?style=for-the-badge)](#-license)

<br>

**A practical Kali Linux command reference for students, beginners,**
**ethical hackers, security researchers and cybersecurity learners.**

<br>

⭐ **If this project helps you learn, consider starring the repository.**

</div>

---

## 📖 About

Most "100 Kali Linux commands" lists are simply a wall of commands.

This project takes a different approach.

Instead of giving you only:

```bash
nmap
```

the guide explains:

```text
┌─────────────────────────────────────────────────────────────┐
│                     COMMAND LEARNING MODEL                  │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  🎯 What does it do?                                        │
│                                                             │
│  ⌨️  What is the syntax?                                    │
│                                                             │
│  🧪 How can I safely practice it?                           │
│                                                             │
│  🖥️  What output should I expect?                           │
│                                                             │
│  💡 When is it useful?                                      │
│                                                             │
│  ⚠️  What should I be careful about?                       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

The goal is not to memorize 100 commands.

The goal is to understand **what the tools measure, why the results matter, and how the information fits into a professional security workflow.**

The original guide follows this learning model for every command.

---

# ✨ Features

## 🔍 Interactive Search

Search commands instantly by:

* Command name
* Category
* Security topic
* Networking
* Web security
* Forensics
* Wireless
* Reverse engineering
* System security

Example searches:

```text
nmap
forensics
wireless
DNS
web
hash
malware
network
```

---

## 🗂️ Five Major Categories

The guide organizes the commands into five practical sections:

```text
🌐 01–15   Networking Fundamentals

🧨 16–35   Security Assessment & Forensics

🔎 36–55   Forensics, Recon & File Analysis

🛰️ 56–75   Network, Wireless & System Security

🧪 76–100  Windows, Recon, Analysis & Utilities
```

---

## 🧪 Hands-On Demos

Every command is accompanied by a practical demonstration.

The demos prioritize:

* `127.0.0.1`
* localhost services
* files created by the learner
* reserved example domains
* `--help`
* `--version`
* safe inspection commands
* isolated virtual machines

For tools capable of credential attacks, interception, exploitation or payload generation, the guide intentionally keeps demonstrations non-operational and lab-focused.

---

## 🖥️ Terminal-Style Examples

Instead of only explaining a command, the guide shows what the terminal interaction can look like.

Example:

```bash
ping -c 4 127.0.0.1
```

Typical output:

```text
PING 127.0.0.1 ...
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.040 ms
64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.035 ms

--- 127.0.0.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss
```

---

## 🧭 Structured Learning Path

The project contains a beginner-to-advanced progression:

```text
LEVEL 1
Linux & Networking
        ↓
LEVEL 2
Network Reconnaissance
        ↓
LEVEL 3
Web Security
        ↓
LEVEL 4
Traffic Analysis
        ↓
LEVEL 5
Digital Forensics
        ↓
LEVEL 6
Wireless Security
```

This makes the repository useful as a **learning curriculum**, rather than simply a command list.

---

## 📱 Responsive Design

The web guide is designed to work across:

* 💻 Desktop
* 🖥️ Laptop
* 📱 Mobile
* 📟 Tablet

---

# 🚀 Getting Started

## 1. Clone the Repository

```bash
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
```

Enter the directory:

```bash
cd YOUR-REPOSITORY
```

---

## 2. Open the Guide

If the project contains a standalone HTML guide:

```bash
open kali_commands_guide.html
```

On Linux:

```bash
xdg-open kali_commands_guide.html
```

Or simply double-click:

```text
kali_commands_guide.html
```

No server is required if the project is completely self-contained.

---

# 🧪 Recommended Practice Lab

For security-testing exercises, use an isolated virtual environment.

A simple architecture:

```text
                    ┌───────────────────┐
                    │    Kali Linux     │
                    │  Security Tester  │
                    └─────────┬─────────┘
                              │
                       Host-Only Network
                              │
            ┌─────────────────┼─────────────────┐
            │                 │                 │
            ▼                 ▼                 ▼
     ┌────────────┐   ┌──────────────┐   ┌─────────────┐
     │Metasploitable│ │ OWASP Juice  │   │ Windows VM  │
     │     VM      │ │     Shop     │   │  Test VM    │
     └────────────┘   └──────────────┘   └─────────────┘
```

The source guide recommends a Kali VM plus intentionally vulnerable or controlled systems such as Metasploitable and OWASP Juice Shop.

---

# 🔐 The Golden Rule

```text
             ┌───────────────────────┐
             │       OWN IT          │
             └───────────┬───────────┘
                         │
                         ▼
             ┌───────────────────────┐
             │          OR           │
             │ HAVE EXPLICIT         │
             │ PERMISSION            │
             └───────────┬───────────┘
                         │
                         ▼
             ┌───────────────────────┐
             │          OR           │
             │ USE A DEDICATED LAB  │
             └───────────────────────┘
```

**Never test a system simply because you can reach it.**

Use your own machine, an authorized assessment target, or a dedicated cybersecurity lab.

---

# 🌐 01–15 · Networking Fundamentals

|  # | Command      | Main Purpose                    |
| -: | ------------ | ------------------------------- |
| 01 | `ifconfig`   | Network interfaces              |
| 02 | `ping`       | Connectivity testing            |
| 03 | `netstat`    | Network connections             |
| 04 | `nmap`       | Network/service discovery       |
| 05 | `arp`        | ARP cache                       |
| 06 | `dig`        | DNS queries                     |
| 07 | `whois`      | Domain registration information |
| 08 | `host`       | DNS lookup                      |
| 09 | `traceroute` | Network path                    |
| 10 | `route`      | Routing table                   |
| 11 | `iptables`   | Firewall rules                  |
| 12 | `tcpdump`    | Packet capture                  |
| 13 | `wireshark`  | GUI packet analysis             |
| 14 | `ssh`        | Secure remote access            |
| 15 | `nc`         | TCP/UDP networking              |

### Suggested starting point

```bash
ip addr
ping -c 4 127.0.0.1
ss -tuln
ip route
dig example.com
nmap 127.0.0.1
```

---

# 🧨 16–35 · Security Assessment & Forensics

|  # | Command / Tool | Main Purpose                  |
| -: | -------------- | ----------------------------- |
| 16 | `metasploit`   | Security-testing framework    |
| 17 | `hydra`        | Authentication auditing       |
| 18 | `john`         | Password-hash auditing        |
| 19 | `aircrack-ng`  | Wireless auditing             |
| 20 | `reaver`       | WPS auditing                  |
| 21 | `sqlmap`       | SQL-injection testing         |
| 22 | `enum4linux`   | Windows/Samba enumeration     |
| 23 | `nikto`        | Web-server assessment         |
| 24 | `dirb`         | Web-content discovery         |
| 25 | `wpscan`       | WordPress security assessment |
| 26 | `burp`         | Web security testing          |
| 27 | `sqlninja`     | SQL Server testing            |
| 28 | `ettercap`     | Network security testing      |
| 29 | `snort`        | IDS/IPS                       |
| 30 | `openvas`      | Vulnerability assessment      |
| 31 | `armitage`     | Historical Metasploit GUI     |
| 32 | `xsser`        | XSS testing                   |
| 33 | `dirbuster`    | Directory discovery           |
| 34 | `hashcat`      | Hash auditing                 |
| 35 | `volatility`   | Memory forensics              |

---

# 🔎 36–55 · Forensics, Recon & File Analysis

|  # | Command / Tool    | Main Purpose                |
| -: | ----------------- | --------------------------- |
| 36 | `autopsy`         | Digital forensics           |
| 37 | `gobuster`        | Content/DNS enumeration     |
| 38 | `dnsrecon`        | DNS reconnaissance          |
| 39 | `steghide`        | Steganography analysis      |
| 40 | `stegcracker`     | Steganography auditing      |
| 41 | `sshuttle`        | SSH-based network tunneling |
| 42 | `mitmproxy`       | HTTP/HTTPS debugging        |
| 43 | `hash-identifier` | Hash identification         |
| 44 | `samdump2`        | Windows SAM analysis        |
| 45 | `radare2`         | Reverse engineering         |
| 46 | `airgeddon`       | Wireless auditing           |
| 47 | `mitm6`           | IPv6 security testing       |
| 48 | `mitmAP`          | Wireless testing            |
| 49 | `dmitry`          | Information gathering       |
| 50 | `theHarvester`    | OSINT                       |
| 51 | `exiftool`        | Metadata analysis           |
| 52 | `binwalk`         | Binary/firmware analysis    |
| 53 | `foremost`        | File carving                |
| 54 | `scalpel`         | File carving                |
| 55 | `ssh-keygen`      | SSH key generation          |

---

# 🛰️ 56–75 · Network, Wireless & System Security

|  # | Command / Tool  | Main Purpose                         |
| -: | --------------- | ------------------------------------ |
| 56 | `john`          | Password auditing                    |
| 57 | `tcpflow`       | TCP stream reconstruction            |
| 58 | `davtest`       | WebDAV testing                       |
| 59 | `sslscan`       | TLS configuration analysis           |
| 60 | `wifite`        | Wireless auditing                    |
| 61 | `tshark`        | CLI packet analysis                  |
| 62 | `macchanger`    | MAC-address management               |
| 63 | `nbtscan`       | NetBIOS enumeration                  |
| 64 | `ike-scan`      | IKE/IPsec discovery                  |
| 65 | `hashcat-utils` | Hashcat utilities                    |
| 66 | `veil`          | Historical payload/evasion framework |
| 67 | `bettercap`     | Network security testing             |
| 68 | `ferret`        | Historical traffic/session analysis  |
| 69 | `maltego`       | OSINT/link analysis                  |
| 70 | `pdf-parser`    | PDF analysis                         |
| 71 | `openvpn`       | VPN                                  |
| 72 | `msfvenom`      | Payload-generation utility           |
| 73 | `dnsenum`       | DNS enumeration                      |
| 74 | `p0f`           | Passive OS fingerprinting            |
| 75 | `thc-ipv6`      | IPv6 security testing                |

---

# 🧪 76–100 · Windows, Recon, Analysis & Utilities

|   # | Command / Tool               | Main Purpose                      |
| --: | ---------------------------- | --------------------------------- |
|  76 | `chntpw`                     | Windows account database analysis |
|  77 | `pcredz`                     | Credential-artifact analysis      |
|  78 | `exploitdb` / `searchsploit` | Exploit reference searching       |
|  79 | `dmitry`                     | Information gathering             |
|  80 | `yara`                       | Malware/threat hunting            |
|  81 | `db_nmap`                    | Nmap from Metasploit              |
|  82 | `msfpc`                      | Metasploit payload helper         |
|  83 | `mac-robber`                 | File MAC-time collection          |
|  84 | `enumiax`                    | Asterisk/IAX enumeration          |
|  85 | `ipcalc`                     | Network calculations              |
|  86 | `mimikatz`                   | Windows security research         |
|  87 | `wifiphisher`                | Wireless security awareness       |
|  88 | `metagoofil`                 | Document metadata collection      |
|  89 | `recon-ng`                   | Reconnaissance framework          |
|  90 | `exploitdb`                  | Exploit reference searching       |
|  91 | `enumiax`                    | Asterisk/IAX enumeration          |
|  92 | `golismero`                  | Historical web assessment         |
|  93 | `sparta`                     | Network assessment GUI            |
|  94 | `ike-scan`                   | IKE/IPsec fingerprinting          |
|  95 | `nmapsi4`                    | Nmap GUI frontend                 |
|  96 | `socat`                      | Data relay                        |
|  97 | `dirbuster-ng`               | Content discovery                 |
|  98 | `davtest`                    | WebDAV testing                    |
|  99 | `udis86`                     | x86/x64 disassembly               |
| 100 | `lynis`                      | Linux security auditing           |

> **Note:** The source list intentionally contains several duplicate entries and historical/legacy tools. This repository preserves the original 100-item structure while pointing learners toward modern alternatives where appropriate.

---

# ⭐ 20 Commands to Learn First

If you're completely new to Kali Linux and cybersecurity, don't start by trying to memorize all 100.

Start with these:

```text
01. ip
02. ping
03. ss
04. ip route
05. dig
06. traceroute
07. nmap
08. tcpdump
09. tshark
10. Wireshark
11. ssh
12. gobuster
13. Burp Suite
14. nikto
15. exiftool
16. binwalk
17. volatility
18. yara
19. radare2
20. lynis
```

These are also the commands prioritized by the source guide.

---

# 🧭 Beginner → Advanced Learning Path

## Level 1 — Linux & Networking

Learn:

```text
ip
ifconfig
ping
ss
netstat
arp
ip route
dig
host
traceroute
tcpdump
```

### Goal

Understand:

```text
Interface
   ↓
IP Address
   ↓
Routing
   ↓
DNS
   ↓
Packets
```

---

# Level 2 — Network Reconnaissance

Learn:

```text
nmap
dnsrecon
dnsenum
whois
dmitry
theHarvester
p0f
nbtscan
```

### Goal

Understand what information an authorized security tester can discover.

---

# Level 3 — Web Security

Learn:

```text
Burp Suite
nikto
gobuster
dirb
wpscan
sqlmap
xsser
davtest
sslscan
```

### Goal

Understand:

* HTTP
* Requests
* Responses
* Headers
* Authentication
* Sessions
* Input validation
* TLS
* Common web vulnerabilities

---

# Level 4 — Traffic Analysis

Learn:

```text
tcpdump
Wireshark
tshark
tcpflow
mitmproxy
bettercap
```

### Goal

Understand how:

```text
Packets
   ↓
TCP/UDP
   ↓
Protocols
   ↓
Streams
   ↓
Application conversations
```

---

# Level 5 — Digital Forensics

Learn:

```text
Autopsy
Volatility
Foremost
Scalpel
Binwalk
ExifTool
YARA
mac-robber
radare2
```

### Goal

Follow:

```text
Acquire
   ↓
Inspect
   ↓
Analyze
   ↓
Correlate
   ↓
Report
```

---

# Level 6 — Wireless Security

Learn:

```text
aircrack-ng
reaver
wifite
airgeddon
wifiphisher
```

### Goal

Understand:

* Wi-Fi authentication
* Encryption
* WPS
* Rogue access-point risks
* Wireless monitoring
* Defensive wireless security

All wireless exercises should remain inside a controlled lab.

---

# 🧠 Security Workflow

The project uses a simple security-assessment mental model:

```text
                 RECON
                   │
                   ▼
              DISCOVERY
                   │
                   ▼
             ENUMERATION
                   │
                   ▼
        VULNERABILITY ANALYSIS
                   │
                   ▼
        CONTROLLED VALIDATION
                   │
                   ▼
            EXPLOITATION*
                   │
                   ▼
          EVIDENCE / FORENSICS
                   │
                   ▼
             REMEDIATION
                   │
                   ▼
                REPORT
```

`*` Exploitation is appropriate only when explicitly authorized.

---

# 🛠️ Modern Linux Alternatives

Some traditional Linux commands are still useful for learning, but modern systems commonly use newer replacements.

| Older / Traditional | Modern / Common Alternative        |
| ------------------- | ---------------------------------- |
| `ifconfig`          | `ip addr`                          |
| `netstat`           | `ss`                               |
| `route`             | `ip route`                         |
| `arp`               | `ip neigh`                         |
| `openvas`           | Greenbone/OpenVAS stack            |
| `exploitdb`         | `searchsploit`                     |
| `burp`              | Burp Suite launcher/UI             |
| `pdf-parser`        | Check installed package/version    |
| `dirbuster-ng`      | `gobuster` / `ffuf`                |
| `nmapsi4`           | `nmap` / maintained GUI            |
| `golismero`         | Check current package availability |
| `armitage`          | Modern Metasploit workflow         |

The source guide specifically highlights these legacy/modern distinctions.

---

# ⌨️ Command Syntax

Most Linux security commands follow a structure similar to:

```bash
command [options] [target/input]
```

For example:

```bash
nmap -sV 127.0.0.1
```

Breakdown:

```text
nmap
 │
 └── Program

-sV
 │
 └── Option

127.0.0.1
 │
 └── Target
```

Another example:

```bash
ipcalc 192.168.56.10/24
```

```text
ipcalc
 │
 └── Program

192.168.56.10/24
 │
 └── Input
```

---

# 🧪 Safe Demo Philosophy

The demos in this repository are intentionally designed around safe practice.

### Preferred targets

```text
127.0.0.1
localhost
Your own files
Your own VM
Your own network
Authorized lab machines
Intentionally vulnerable applications
```

### Recommended vulnerable labs

```text
Metasploitable
OWASP Juice Shop
DVWA
Security Onion lab
Windows test VM
Linux test VM
```

The guide's recommended lab architecture uses isolated virtual machines rather than public targets.

---

# ⚠️ High-Risk Tools

Some tools in the list can perform actions that could compromise systems if misused.

Examples include:

```text
hydra
john
hashcat
aircrack-ng
reaver
wifite
sqlmap
ettercap
mitm6
bettercap
msfvenom
mimikatz
veil
wifiphisher
```

For these tools, this project focuses on:

```text
Understanding
     ↓
Configuration
     ↓
Detection
     ↓
Defense
     ↓
Authorized lab validation
```

It does **not** provide operational instructions for attacking real users or systems.

---

# 🦠 Malware Analysis & Threat Hunting

Cybersecurity learners can also use this repository to begin learning defensive malware analysis.

Useful tools include:

```text
YARA
radare2
Volatility
binwalk
ExifTool
Autopsy
Foremost
Scalpel
```

A basic defensive workflow:

```text
Suspicious File
      │
      ▼
Hash / Metadata
      │
      ▼
Static Analysis
      │
      ▼
Strings / Signatures
      │
      ▼
YARA Detection
      │
      ▼
Reverse Engineering
      │
      ▼
Memory / System Evidence
      │
      ▼
Report
```

The goal is to understand and detect malicious behavior rather than deploy malware.

---

# 🔬 Forensics Workflow

A basic forensic investigation can be visualized as:

```text
Evidence
   │
   ▼
Acquisition
   │
   ▼
Preservation
   │
   ▼
Analysis
   │
   ├── Metadata
   ├── Files
   ├── Memory
   ├── Network
   └── Artifacts
   │
   ▼
Timeline
   │
   ▼
Correlation
   │
   ▼
Findings
   │
   ▼
Report
```

---

# 🌐 Networking Mental Model

Before learning advanced security tools, understand the underlying network.

```text
Application
     │
     ▼
Transport
 TCP / UDP
     │
     ▼
Internet
 IP
     │
     ▼
Network Access
 Ethernet / Wi-Fi
```

Useful commands:

```bash
ip addr
ip route
ss -tuln
ping 127.0.0.1
dig example.com
traceroute example.com
tcpdump -i lo
```

---

# 📡 Packet Analysis Mental Model

```text
Network Interface
       │
       ▼
     Packet
       │
       ▼
   Ethernet
       │
       ▼
      IPv4
       │
       ▼
   TCP / UDP
       │
       ▼
 Application Protocol
       │
       ▼
   Application
```

Tools:

```text
tcpdump
tshark
Wireshark
tcpflow
mitmproxy
```

---

# 🔎 Reconnaissance Mental Model

```text
Domain
  │
  ├── DNS
  │
  ├── IP
  │
  ├── Services
  │
  ├── Technologies
  │
  ├── Public Information
  │
  └── Attack Surface
```

Useful tools:

```text
dig
host
whois
dnsrecon
dnsenum
nmap
theHarvester
dmitry
recon-ng
Maltego
```

Always keep reconnaissance within the scope of your authorization.

---

# 🛡️ Defensive Security

Security isn't only about finding vulnerabilities.

The other half is fixing them.

For example:

```text
Discovery
    ↓
Finding
    ↓
Risk
    ↓
Remediation
    ↓
Hardening
    ↓
Verification
```

For Linux hardening:

```bash
sudo lynis audit system
```

Typical areas include:

```text
SSH configuration
Firewall
Services
Permissions
Authentication
System configuration
Security controls
```

---

# 📊 Quick Command Selection Map

```text
                         KALI LINUX
                              │
          ┌───────────────────┼───────────────────┐
          │                   │                   │
       NETWORK               WEB              FORENSICS
          │                   │                   │
        nmap                nikto             volatility
        ping              gobuster             autopsy
      tcpdump              sqlmap              foremost
       tshark               burp               binwalk
        dig                wpscan                yara
          │                   │                   │
          └───────────────────┼───────────────────┘
                              │
                       SECURITY TESTING
                              │
              ┌───────────────┼───────────────┐
              │               │               │
           Wireless        Passwords          RE
              │               │               │
         aircrack-ng         john            radare2
           wifite           hashcat           udis86
           reaver            hydra
```

---

# 📚 Quick Reference

| Category            | Start With                          |
| ------------------- | ----------------------------------- |
| Linux networking    | `ip`, `ss`, `ping`                  |
| DNS                 | `dig`, `host`                       |
| Network scanning    | `nmap`                              |
| Packet analysis     | `tcpdump`, `tshark`, Wireshark      |
| Web testing         | Burp, `nikto`, `gobuster`           |
| WordPress           | `wpscan`                            |
| Hash auditing       | `john`, `hashcat`                   |
| Wireless lab        | `aircrack-ng`, `wifite`             |
| Reverse engineering | `radare2`                           |
| Forensics           | Autopsy, Volatility                 |
| File analysis       | `exiftool`, `binwalk`               |
| Threat hunting      | `yara`                              |
| OSINT               | Maltego, `theHarvester`, `recon-ng` |
| Linux hardening     | `lynis`                             |
| VPN                 | `openvpn`, `ike-scan`               |
| Firewall            | `iptables`                          |

---

# 📁 Project Structure

A recommended repository structure:

```text
100-essential-kali-linux-commands/
│
├── README.md
│
├── kali_commands_guide.html
│
├── assets/
│   ├── hero-preview.png
│   ├── grid-preview.png
│   ├── card-expand-preview.png
│   └── mobile-preview.png
│
├── css/
│   ├── style.css
│   └── animations.css
│
├── js/
│   ├── commands.js
│   ├── search.js
│   ├── filters.js
│   └── main.js
│
├── docs/
│   ├── learning-path.md
│   ├── lab-setup.md
│   └── safety.md
│
└── LICENSE
```

---

# 🖼️ Screenshots

Add your project screenshots here:

### Hero

```text
assets/hero-preview.png
```

### Command Grid

```text
assets/grid-preview.png
```

### Expanded Command

```text
assets/card-expand-preview.png
```

### Mobile

```text
assets/mobile-preview.png
```

Example Markdown:

```html
<p align="center">
  <img src="./assets/hero-preview.png"
       alt="Kali Linux Commands Guide"
       width="100%">
</p>
```

---

# 🧑‍💻 Who Is This For?

This project is designed for:

* 🎓 Cybersecurity students
* 🐧 Linux beginners
* 🔐 Ethical-hacking learners
* 🛡️ Defensive-security learners
* 🔎 Digital-forensics students
* 🌐 Networking students
* 🧪 Security-lab practitioners
* 💻 CTF learners
* 📚 Self-taught cybersecurity enthusiasts

It can also serve as a quick reference for people who already know Linux but occasionally forget command syntax.

---

# 🎓 Suggested Study Method

Don't try to learn all 100 commands in one day.

Use this approach:

### Step 1 — Understand

Read:

```text
What does this command do?
```

### Step 2 — Understand syntax

Identify:

```text
Command
Options
Arguments
Target/Input
```

### Step 3 — Run the safe demo

Use:

```text
localhost
your own files
your own VM
authorized lab
```

### Step 4 — Read the output

Ask:

```text
What did the command actually measure?
```

### Step 5 — Investigate

Read the command's manual:

```bash
man nmap
```

or:

```bash
nmap --help
```

### Step 6 — Document

Keep notes about:

```text
Command
Purpose
Options
Output
Interpretation
Limitations
Defensive relevance
```

---

# 📖 Learn Linux Before Memorizing Security Tools

A strong cybersecurity foundation begins with Linux itself.

Learn:

```text
Files
Directories
Permissions
Processes
Users
Groups
Networking
Services
Logs
Shell scripting
Package management
Environment variables
```

Then move into:

```text
Networking
      ↓
Reconnaissance
      ↓
Web Security
      ↓
Traffic Analysis
      ↓
Forensics
      ↓
Threat Hunting
      ↓
Advanced Security
```

---

# 🐚 Useful Linux Fundamentals

Before the 100 security commands, become comfortable with:

```bash
pwd
ls
cd
mkdir
touch
cp
mv
rm
cat
less
head
tail
grep
find
chmod
chown
ps
top
kill
systemctl
apt
sudo
```

These aren't part of the original 100-command security list, but they are essential prerequisites for working effectively in Kali Linux.

---

# 🔧 Troubleshooting

## Command not found

Try:

```bash
command -v <command>
```

Example:

```bash
command -v nmap
```

You can also check:

```bash
which nmap
```

---

## Read the manual

```bash
man nmap
```

Search help:

```bash
nmap --help
```

Version:

```bash
nmap --version
```

---

## Check whether a package is installed

```bash
dpkg -l | grep <package>
```

Or:

```bash
apt search <package>
```

---

# ⚠️ Important: Kali Linux Is Not a Magic Hacking Button

Installing Kali Linux doesn't automatically make someone a security professional.

Professional cybersecurity requires understanding:

```text
Operating Systems
       +
Networking
       +
Programming
       +
Cryptography
       +
Web Technologies
       +
Security Principles
       +
Digital Forensics
       +
Threat Modeling
       +
Ethics
```

Tools are only instruments.

**Understanding is the real skill.**

---

# 🧠 The Professional Mindset

A professional security tester doesn't simply ask:

> "Can I run this command?"

They ask:

```text
What am I testing?
        ↓
Why am I testing it?
        ↓
What is the expected result?
        ↓
How reliable is the result?
        ↓
What does the result mean?
        ↓
What is the security impact?
        ↓
How can it be fixed?
        ↓
How can the fix be verified?
```

The source guide emphasizes this distinction between merely running tools and understanding their measurements, reliability and remediation value.

---

# 🤝 Contributing

Contributions are welcome.

You can contribute by:

* Fixing outdated command information
* Improving explanations
* Adding modern alternatives
* Improving UI/UX
* Adding screenshots
* Improving accessibility
* Adding learning resources
* Fixing broken demos
* Improving mobile responsiveness
* Adding defensive-security explanations
* Reporting incorrect output examples

---

## Contribution Workflow

### 1. Fork

Fork the repository.

### 2. Clone

```bash
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
```

### 3. Create a branch

```bash
git checkout -b improve-command-guide
```

### 4. Make your changes

Test everything locally.

### 5. Commit

```bash
git add .
git commit -m "Improve command demonstrations"
```

### 6. Push

```bash
git push origin improve-command-guide
```

### 7. Open a Pull Request

Explain:

```text
What changed?
Why was it changed?
How was it tested?
```

---

# 🐛 Reporting Issues

When reporting an issue, include:

```text
Command:
Kali version:
Architecture:
Expected output:
Actual output:
Terminal output:
Steps to reproduce:
```

Avoid posting:

* passwords
* private keys
* tokens
* personal information
* real credentials
* sensitive system data

---

# ⭐ Star the Repository

If this project helped you:

```text
⭐ Star
🍴 Fork
📢 Share
🤝 Contribute
```

A star helps other learners discover the project.

---

# 📜 Disclaimer

This repository is intended for **education, cybersecurity learning, defensive research and authorized security testing**.

You are responsible for ensuring that your use of these tools complies with:

* Applicable laws
* Institutional policies
* Network policies
* Terms of service
* Explicit authorization requirements

Never use security tools against systems, accounts, networks or data that you do not own or have permission to test.

The project follows the principle:

```text
OWN IT
   OR
HAVE EXPLICIT PERMISSION
   OR
USE A DEDICATED LAB
```

The original guide explicitly frames its examples around personal systems, deliberately vulnerable labs and explicitly authorized targets.

---

# 📄 License

This project is released under the **MIT License**.

See:

```text
LICENSE
```

for the complete license text.

---

# 🌟 Final Learning Philosophy

```text
             ┌──────────────────┐
             │     LEARN        │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │    PRACTICE      │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │    ANALYZE       │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │    DEFEND        │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │    DOCUMENT      │
             └────────┬─────────┘
                      │
                      ▼
             ┌──────────────────┐
             │    IMPROVE       │
             └──────────────────┘
```

> **A great cybersecurity learner doesn't just know how to run a tool.**
>
> **They understand what the tool is doing, what the output means, how reliable the result is, and how to use that knowledge to improve security.**

---

<div align="center">

# 🐉 Keep Learning. Keep Building. Keep Defending.

**100 commands are only the beginning.**

```text
Linux
  ↓
Networking
  ↓
Security
  ↓
Forensics
  ↓
Threat Hunting
  ↓
Defense
  ↓
Professional Practice
```

<br>

**Built with 🖤 for the next generation of cybersecurity learners.**

<br>

⭐ **Star** · 🍴 **Fork** · 🤝 **Contribute** · 📚 **Learn**

</div>
