#!/bin/bash

echo "Downloading echoMimic models"
mkdir -p /ComfyUI/models/echo_mimic/v2 && cd /ComfyUI/models/echo_mimic/v2

file="denoising_unet.pth"
url="https://huggingface.co/BadToBest/EchoMimicV2/resolve/main/denoising_unet.pth?download=true"

if [ -f "$file" ]; then
    echo "$file already exists."
else
    echo "Downloading $file"
    wget -O $file $url --progress=bar:force:noscroll
fi

file="motion_module.pth"
url="https://huggingface.co/BadToBest/EchoMimicV2/resolve/main/motion_module.pth?download=true"

if [ -f "$file" ]; then
    echo "$file already exists."
else
    echo "Downloading $file"
    wget -O $file $url --progress=bar:force:noscroll
fi

file="pose_encoder.pth"
url="https://huggingface.co/BadToBest/EchoMimicV2/resolve/main/pose_encoder.pth?download=true"

if [ -f "$file" ]; then
    echo "$file already exists."
else
    echo "Downloading $file"
    wget -O $file $url --progress=bar:force:noscroll
fi

file="reference_unet.pth"
url="https://huggingface.co/BadToBest/EchoMimicV2/resolve/main/reference_unet.pth?download=true"

if [ -f "$file" ]; then
    echo "$file already exists."
else
    echo "Downloading $file"
    wget -O $file $url --progress=bar:force:noscroll
fi

file="denoising_unet_acc.pth"
url="https://huggingface.co/BadToBest/EchoMimicV2/resolve/main/denoising_unet_acc.pth?download=true"

if [ -f "$file" ]; then
    echo "$file already exists."
else
    echo "Downloading $file"
    wget -O $file $url --progress=bar:force:noscroll
fi

file="motion_module_acc.pth"
url="https://huggingface.co/BadToBest/EchoMimicV2/resolve/main/motion_module_acc.pth?download=true"

if [ -f "$file" ]; then
    echo "$file already exists."
else
    echo "Downloading $file"
    wget -O $file $url --progress=bar:force:noscroll
fi


cd /ComfyUI/models/echo_mimic

file="yolov8m.pt"
url="https://huggingface.co/Ultralytics/YOLOv8/resolve/main/yolov8m.pt?download=true"

if [ -f "$file" ]; then
    echo "$file already exists."
else
    echo "Downloading $file"
    wget -O $file $url --progress=bar:force:noscroll
fi

file="sapiens_1b_goliath_best_goliath_AP_639_torchscript.pt2"
url="https://huggingface.co/facebook/sapiens-pose-1b-torchscript/resolve/main/sapiens_1b_goliath_best_goliath_AP_639_torchscript.pt2?download=true"

if [ -f "$file" ]; then
    echo "$file already exists."
else
    echo "Downloading $file"
    wget -O $file $url --progress=bar:force:noscroll
fi
