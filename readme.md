# weave-ubuntu
Highly opinionated base image. This image is also available in docker hub as elarasu/weave-ubuntu.

# Utilties
 * wget
 * sysstat
 * strace
 * tcpdump
 * dnsutils
 * vi

Please refer to the Dockerfile for full list of admin utilities packed in.

# Features included
 * sar (enabled)

# To include within your Dockerfile

    FROM elarasu/weave-ubuntu:latest
