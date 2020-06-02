docker run --rm -it \
        --privileged \
        --ipc=host \
        --network=none \
        --env ENABLE_ISOLATED_TESTS=1 \
        --env FICD_DM_VOLUME_GROUP= \
        --env FICD_DM_POOL= \
        --env GOPROXY=direct \
        --env GOSUMDB=off \
        --env NUMBER_OF_VMS= \
        --workdir="/src/runtime" \
        --init \
        localhost/firecracker-containerd-test:latest \
	/bin/bash
