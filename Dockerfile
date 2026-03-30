# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
RUN comfy node install --exit-on-fail comfyui-kaola-qwen-tts@1.3.0 --mode remote

# download models into comfyui

# COPY input/ /comfyui/input/
