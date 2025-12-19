#!/bin/bash

clear
echo "======================================="
echo "   ⚠️  EMERGENCY WIPE MODE ⚠️"
echo "======================================="
echo
echo "This will PERMANENTLY ERASE ALL DATA"
echo "on this computer using random overwrite."
echo
read -p "Type WIPE-MY-PC-NOW to continue: " CONFIRM

if [ "$CONFIRM" != "WIPE-MY-PC-NOW" ]; then
  echo
  echo "Wipe cancelled."
  exit 1
fi

echo
echo "Last chance! Press CTRL+C within 5 seconds to cancel..."
sleep 5

sudo nwipe --method=prng --rounds=2 --verify=last --blank
