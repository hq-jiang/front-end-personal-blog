#!/bin/bash

# set -x
IMAGES=$(ls -1)

for IMAGE in $IMAGES
do
	if [ ${IMAGE: -5} == ".HEIC" ]; then
		heif-convert $IMAGE "${IMAGE:0: -5}.jpg"

	fi
done