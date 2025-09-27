brew install cmake
xcode-select --install
brew install ninja


xcrun --sdk macosx --show-sdk-path


SDKROOT=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk CMAKE_ARGS="-DGGML_METAL=on" FORCE_CMAKE=1 pip install -U --force-reinstall llama-cpp-python --no-cache-dir