FROM registry.access.redhat.com/ubi9/ubi
USER root
RUN dnf install -y \
    httpd \
    createrepo \
    && dnf clean all
RUN mkdir -p /var/www/html/repos/myrepo
COPY rpms/ /var/www/html/repos/myrepo
RUN createrepo /var/www/html/repos/myrepo
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
