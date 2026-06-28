# Task 8 - Live Packet Capture and Analysis

## Objective
Capture live external network traffic using Wireshark and utilize display filters to isolate specific HTTP protocol exchanges, demonstrating fundamental packet analysis skills.

## Environment
- OS: Windows (Host) / Ubuntu 22.04 (WSL2 for repository management)
- Tool: Wireshark (Graphical User Interface)
- Target: External web server (`http://neverssl.com`)
- Interface: Primary Wi-Fi / Ethernet Adapter

## Execution Steps
1. Initiated a live packet capture on the primary active network interface using Wireshark.
2. Generated target traffic by manually navigating to an unencrypted HTTP web server (`neverssl.com`).
3. Terminated the capture and applied the `http` display filter to isolate the specific web traffic from background network noise.
4. Exported the filtered session as `capture.pcap` for further analysis.

## Packet Analysis
Filtering the raw `.pcap` file for `http` successfully isolated the exact traffic flow:
1. **The Request:** The local machine initiated a cleartext `HTTP GET` request to the target server.
2. **The Response:** The target server responded with an `HTTP/1.1 200 OK` status, transmitting the payload back to the host.

## Key Takeaway
Analyzing raw packet captures represents the ground truth of network security. While system logs can be incomplete or manipulated, capturing packets directly off the wire shows exactly what data left the machine and what came back. Capturing unencrypted HTTP traffic practically demonstrates how easily data can be intercepted in transit without SSL/TLS encryption.

## Deliverables
- Raw packet capture file securely saved in the capture.pcap
- [Filtered traffic screenshot saved]('images/01_http_request.png')

## Videos
![WireShark Video]('videos/wiresharkTask4.mp4')
