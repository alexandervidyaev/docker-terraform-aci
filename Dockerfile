FROM alpine:3.15
COPY terraform /usr/local/bin/terraform
COPY terraform-provider-aci_v2.3.0 /root/.terraform.d/plugins/terraform.local/local/aci/2.3.0/linux_amd64/terraform-provider-aci_v2.3.0
RUN chmod 0755 /usr/local/bin/terraform && \
    chmod 0755 /root/.terraform.d/plugins/terraform.local/local/aci/2.3.0/linux_amd64/terraform-provider-aci_v2.3.0