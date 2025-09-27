brew install cmake
xcode-select --install
brew install ninja


xcrun --sdk macosx --show-sdk-path

 # Collecting llama-cpp-python
 #  Downloading llama_cpp_python-0.3.16.tar.gz (50.7 MB)
 #     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 50.7/50.7 MB 33.3 MB/s  0:00:01 eta 0:00:01
 #  Installing build dependencies ...   Getting requirements to build wheel ...   Preparing metadata (pyproject.toml) ... Collecting typing-extensions>=4.5.0 (from llama-cpp-python)
 #  Downloading typing_extensions-4.15.0-py3-none-any.whl.metadata (3.3 kB)
 #Collecting numpy>=1.20.0 (from llama-cpp-python)
 #  Downloading numpy-2.3.3-cp313-cp313-macosx_14_0_arm64.whl.metadata (62 kB)
 #Collecting diskcache>=5.6.1 (from llama-cpp-python)
 #  Downloading diskcache-5.6.3-py3-none-any.whl.metadata (20 kB)
 #Collecting jinja2>=2.11.3 (from llama-cpp-python)
 #  Downloading jinja2-3.1.6-py3-none-any.whl.metadata (2.9 kB)
 #Collecting MarkupSafe>=2.0 (from jinja2>=2.11.3->llama-cpp-python)
 #  Downloading MarkupSafe-3.0.2-cp313-cp313-macosx_11_0_arm64.whl.metadata (4.0 kB)
 #Downloading diskcache-5.6.3-py3-none-any.whl (45 kB)
 #Downloading jinja2-3.1.6-py3-none-any.whl (134 kB)
 #Downloading MarkupSafe-3.0.2-cp313-cp313-macosx_11_0_arm64.whl (12 kB)
 #Downloading numpy-2.3.3-cp313-cp313-macosx_14_0_arm64.whl (5.1 MB)
 #   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 5.1/5.1 MB 30.0 MB/s  0:00:00
 #Downloading typing_extensions-4.15.0-py3-none-any.whl (44 kB)
 #Building wheels for collected packages: llama-cpp-python
 #  Building wheel for llama-cpp-python (pyproject.toml) ...   Created wheel for llama-cpp-python: filename=llama_cpp_python-0.3.16-cp313-cp313-macosx_26_0_arm64.whl size=3842949 sha256=5bf5b71c825e8e03998e14915dbaa4877faa7d26f3418f6b3d03258ac96458da
 #...
 #Successfully built llama-cpp-python
 #Installing collected packages: typing-extensions, numpy, MarkupSafe, diskcache, jinja2, llama-cpp-python
 #   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 6/6 [llama-cpp-python][llama-cpp-python]
 #Successfully installed MarkupSafe-3.0.2 diskcache-5.6.3 jinja2-3.1.6 llama-cpp-python-0.3.16 numpy-2.3.3 typing-extensions-4.15.0

