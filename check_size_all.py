import os
target_dir = r"D:\Maquinas Pensantes ou NÃO\Antigravity\quartz_site\content\D&D 5e"
large_files = []
for root, _, files in os.walk(target_dir):
    for f in files:
        path = os.path.join(root, f)
        size_mb = os.path.getsize(path) / (1024 * 1024)
        if size_mb > 20:
            large_files.append((path, size_mb))

print("Arquivos > 20MB:")
for path, size_mb in large_files:
    print(f"{size_mb:.2f} MB: {path}")
