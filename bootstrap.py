import os
import shutil

def organize_assets():
    # Asumsi file gambar ada di folder yang sama dengan script
    asset_mapping = {
        "1000025688.png": "assets/sprites/blocks.png",
        "1000025689.png": "assets/sprites/player_sheet.png",
        "1000025690.png": "assets/sprites/ui_elements.png"
    }

    for original, target in asset_mapping.items():
        if os.path.exists(original):
            shutil.move(original, target)
            print(f"✅ Moved {original} to {target}")
        else:
            print(f"⚠️ {original} not found, skip.")

if __name__ == "__main__":
    organize_assets()
