#!/bin/bash

# Script to get public IPv4 and IPv6 addresses using multiple sources

# Function to get public IPv4
get_public_ipv4() {
    # Try multiple services to fetch the public IPv4
    for service in "ifconfig.me" "ipv4.icanhazip.com" "ipv4bot.whatismyipaddress.com" "ipinfo.io/ip"; do
        ipv4=$(curl -s -4 "$service")
        if [ -n "$ipv4" ]; then
            echo "$ipv4"
            return
        fi
    done
    echo "Unable to fetch public IPv4 address"
}

# Function to get public IPv6
get_public_ipv6() {
    # Use curl to fetch the public IPv6 from a reliable service
    curl -s -6 ifconfig.me
}

# Main script
echo "Your public IPv4 address is: $(get_public_ipv4)"
echo "Your public IPv6 address is: $(get_public_ipv6)"
