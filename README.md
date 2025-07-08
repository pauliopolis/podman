Just notes to self whilst learning a bit more about Docker - move along - nothing of interest here

$podman build -t my-yum .

$podman run -d --name yumserver -p 8081:80 my-yum (this means you can access it from the container host at 8081 assuming host opened fw).

