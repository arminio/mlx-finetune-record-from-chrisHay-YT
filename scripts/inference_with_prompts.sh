CHICKEN_PROMPTS=(
  "What is 15 plus 23?"
  "Calculate 45 divided by 9 times 5 plus 2."
  "Add 1/2 to 3/4 then subtract 0.25."
  "If I buy 3 items at \$12.50 each with 8% tax, total cost?"
  "Calculate 15% tip on a \$87 bill plus 6% service charge."
  "Convert 100°F to Celsius using (F-32)*5/9 formula."
)

MODEL_DIR="Qwen"
MODEL_NAME="Qwen2.5-Coder-0.5B-Instructt-MLX"

#MODEL_DIR="mlx-community"
#MODEL_NAME="Qwen2.5-7B-Instruct-4bit"



#for CHICKEN_PROMPT in "${CHICKEN_PROMPTS[@]}"; do
#  echo "Prompt: $CHICKEN_PROMPT"
#  echo "***Fine tuned: Qwen2.5-Coder-0.5B-Instructt-MLX:"
#  mlx_lm.generate --prompt  "${CHICKEN_PROMPT}" \
#    --model /Users/arminkeyvanloo/development/misc/mlx-ak/mlx-finetune-record-from-chrisHay-YT/Qwen/Qwen2.5-Coder-0.5B-Instructt-MLX
#  echo "\n"
#done

for CHICKEN_PROMPT in "${CHICKEN_PROMPTS[@]}"; do

  echo "Prompt: $CHICKEN_PROMPT"
  echo "***Fine tuned: $MODEL_DIR/$MODEL_NAME:"

  mlx_lm.generate --prompt  "${CHICKEN_PROMPT}" \
    --model "$MODEL_DIR/$MODEL_NAME" \
     --adapter-path "adapters_${MODEL_DIR}_${MODEL_NAME}"

  echo "\n"
done