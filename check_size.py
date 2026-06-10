import os
import sys

target_dir = r"D:\Maquinas Pensantes ou NÃO\Antigravity\quartz_site\content\D&D 5e"
large_files = []

for root, _, files in os.walk(target_dir):
    for f in files:
        path = os.path.join(root, f)
        size_mb = os.path.getsize(path) / (1024 * 1024)
        if size_mb > 50:
            large_files.append((path, size_mb))

print("Arquivos muito pesados:")
for f, s in large_files:
    print(f"{s:.2f} MB: {f}")
