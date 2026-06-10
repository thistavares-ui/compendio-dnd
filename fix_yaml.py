import os
import re

content_dir = r"D:\Maquinas Pensantes ou NÃO\Antigravity\quartz_site\content"

for root, dirs, files in os.walk(content_dir):
    for file in files:
        if file.endswith(".md"):
            filepath = os.path.join(root, file)
            try:
                with open(filepath, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                # Check if file has frontmatter
                if content.startswith('---'):
                    parts = content.split('---', 2)
                    if len(parts) >= 3:
                        frontmatter = parts[1]
                        
                        # Find lines like ` [Alias, Alias]`
                        lines = frontmatter.split('\n')
                        new_lines = []
                        changed = False
                        for line in lines:
                            if re.match(r'^\s*\[(.*)\]\s*$', line):
                                changed = True
                                items = [x.strip() for x in re.sub(r'^\s*\[(.*)\]\s*$', r'\1', line).split(',')]
                                for item in items:
                                    if item:
                                        new_lines.append(f"  - {item}")
                            else:
                                new_lines.append(line)
                        
                        if changed:
                            parts[1] = '\n'.join(new_lines)
                            new_content = '---'.join(parts)
                            with open(filepath, 'w', encoding='utf-8') as f:
                                f.write(new_content)
                            print(f"Fixed: {filepath}")
            except Exception as e:
                print(f"Error on {filepath}: {e}")
