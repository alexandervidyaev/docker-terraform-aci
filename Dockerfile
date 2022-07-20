FROM centos:8
ENV SHELL /bin/bash
COPY terraform /usr/local/bin/
COPY terraform-provider-aci_v2.3.0 /root/.terraform.d/plugins/terraform.local/local/aci/2.3.0/linux_amd64/
RUN chmod +x /usr/local/bin/terraform
RUN chmod +x /root/.terraform.d/plugins/terraform.local/local/aci/2.3.0/linux_amd64/terraform-provider-aci_v2.3.0
RUN mkdir /root/volume
CMD ["/lib/systemd/systemd"]
