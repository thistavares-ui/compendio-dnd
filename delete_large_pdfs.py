import os

target_dir = r"D:\Maquinas Pensantes ou NÃO\Antigravity\quartz_site\content\D&D 5e"
large_files = []

for root, _, files in os.walk(target_dir):
    for f in files:
        path = os.path.join(root, f)
        size_mb = os.path.getsize(path) / (1024 * 1024)
        if size_mb > 50:
            large_files.append(path)

for path in large_files:
    print(f"Deletando: {path}")
    os.remove(path)
