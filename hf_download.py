from huggingface_hub import snapshot_download

snapshot_download(repo_id="joyliao7777/LLaRA", repo_type="dataset", local_dir="./dataset", local_dir_use_symlinks=False)
snapshot_download(repo_id="joyliao7777/LLaRA", local_dir="./checkpoints", local_dir_use_symlinks=False)
snapshot_download(repo_id="meta-llama/Llama-2-7b-hf", local_dir="./llama-2-7b-hf", local_dir_use_symlinks=False)
