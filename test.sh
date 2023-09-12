
#!/bin/bash
# A script that asks for your age and provides some responses based on your age.

echo "How old are you?"
read age

if [[ $age -lt 18 ]]; then
  echo "You're quite young! Enjoy your youth!"
elif [[ $age -ge 18 && $age -lt 30 ]]; then
  echo "You're in your twenties. Life is an adventure!"
elif [[ $age -ge 30 && $age -lt 50 ]]; then
  echo "You're in your thirties or forties. The prime of life!"
else
  echo "You're experienced! Wisdom comes with age."
fi

echo "By the way, you look great for $age years old!"
