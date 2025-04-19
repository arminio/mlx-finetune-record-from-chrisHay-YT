


#MODEL_DIR="mlx-community"
#MODEL_NAME="Qwen2.5-7B-Instruct-4bit"

MODEL_DIR="Qwen"
MODEL_NAME="Qwen2.5-Coder-0.5B-Instructt-MLX"


mlx_lm.lora --model "$MODEL_DIR/$MODEL_NAME" \
--train \
--data "./jsonl/calculator-non-diverse" \
--learning-rate 1e-5 \
--iters 1000 \
--adapter-path "adapters_${MODEL_DIR}_${MODEL_NAME}" \
--num-layers 6 \
--fine-tune-type lora
