# Docker-Studies

This is a self-made resume that i made for studying Docker, feel free to use or make pull-requests! :)

## Authors

- [Orlando Mota Pires](https://github.com/orlandomotapires)

---

## Summary

[Before Container](#before-container)</br>
[Container Idea](#container-idea)</br>
[Docker Architecture](#docker-architecture)</br>

---

## **Before Container**

![FirstImage](./images/FirstImage.png)

&emsp;While container was not used, in his place was used hypervisors. Hypervisors are still used nowadays, but they make necessary many others components to make it work. The main components this way needs are: Hardware, HyperVisor, VirtualMachine, OperatingSystem and finally the application. You can see that with the hypervisor, a simple task like launch a app becomes a hard work </br>
&emsp;At last, using a hypervisor, three bad things comes together, hardware farewell, this happens because a need a whole OS to run the app, so i need a dedicated hardware of this OS, second thing is libs hard management, this happens because some libs can be deprecated and the app can use different libs than the OS uses, last thing is the fact of not being mutable, it means that each environment can be different.</br>

## **Container Idea**

![SecondImage](./images/SecondImage.png)

&emsp;With containers the scenery changes a lot, first of all you don't need a lot of under layers to build the app, just the Hardware, OS, Container Engine and and the containers themselves. Other thing that changes the game a lot is the fact all the containers will be built using the same Container Engine, and the CE will use the same hardware to build them, so the hardware farewell is not gonna happen anymore, one point to containers.
</br>
&emsp;As the hypervisor had disadvantages, the containers has advantages. First and already sad, resources optimization, second one is application packaging, this resolves the problem of different libs and versions of the same program. The third one is immutability, this quality comes with the second advantage. At last we have ease of deployment, i think this is the main purpose when using containers, it comes with all others over.</br>

## References

1. <https://www.youtube.com/watch?v=RE31GWJGkwA&ab_channel=MateusMuller>
