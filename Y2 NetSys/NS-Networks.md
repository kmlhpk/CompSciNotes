# COMP2211 Networks and Systems - Networks

## Lecture 1 - Intro

> *A computer network is a group of devices that are connected to one another in order to exchange information or share resources.*

We can look at the Internet as a series of computing devices (hosts/end systems) that run network applications (as opposed to client-side apps) that enable them to exchange info over the network. These hosts are connected via communication links - either physical cables like copper of fiber, or via undirected radio signals like Bluetooth or 802.11 (WiFi). We call the transmission rate of these links **bandwidth**.

When information needs to leave one host to get to another, it is sent in **packets** which are directed and forwarded to their destination via **routers**

## Lecture 2 - Network Core

### In-lecture comments

We start timing d_nodal when it FINISHES arriving, in full, to the router.

d_proc is likely to be a small contribution to d_nodal

d_queue is hard to predict - depends on lots of different factors and happenings within the network

d_trans - once we've got the packet ready to transmit onto outgoing link (front of queue), we transmit at full bit rate, then the length of time taken for entire packet to get onto outgoing link = L/R

d_prop - how long it takes for the signal to propagate along the physical link, independent of bandwidth.

d_trans: cars being serviced by toll booth, d_prop: cars speeding down the road to next toll booth.

Some routers may not provide a response for `traceroute` but that may not be a strict packet loss or network issue - some routers just block responses. Look whether you reach the destination in the end.





## Practical 1

**Q1:** *NB:* Often we make no distinction between "host" and "end system" within terminology.

If you're being pedantic you could say hosts are any computing devices that are connected within a network, eg. the Internet, that may provide info, resources or services to other devices. End systems are services or clients that provide something of use to the end user, but with which the end user may not interact - eg. a PC, email server, web server etc.

**Q2:** HFC connections share a "backbone", tus transfer rate is shared among users. When sending data downstream (to end users), it is sent from only one source, so the packets cannot collide.
