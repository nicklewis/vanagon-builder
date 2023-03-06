    docker build . -t build-container

    docker run -v ~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys -it -p 55000:22 --rm build-container

Build the package with `vanagon build <project> el-7-x86_64 localhost:55000`
