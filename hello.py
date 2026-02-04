import os

# Create a build directory
os.makedirs('dist', exist_ok=True)

# Generate a dummy build info file
with open('dist/build_info.txt', 'w') as f:
    f.write("Build Version: 1.0.0\n")
    f.write("Status: Verified\n")

print("Created artifact directory and metadata.")