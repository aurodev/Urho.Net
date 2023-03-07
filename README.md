# Ongoing .NET 6 development on [dotnet-6.x](https://github.com/Urho-Net/Urho.Net/tree/dotnet-6.x)
  The link to the matching .NET 6 samples , [dotnet-6.x](https://github.com/Urho-Net/Samples/tree/dotnet-6.x)

# Urho.Net
Multi-Platform C# Game development framework based upon the Urho3D game engine .\
Currently supports :  Windows , Linux , OSX , iOS , Android and Web browsers . 

First class Visual Studio Code support as the main IDE on all 3 major platforms , Windows , MacOS and Linux .
### Check the Wiki for quick start
[Wiki](https://github.com/Urho-Net/Urho.Net/wiki)

# <u> Common Dependencies </u>
- **Visual Studio Code** \
  https://code.visualstudio.com/download

- **NET Core SDK 3.1**  \
  https://dotnet.microsoft.com/download/dotnet-core/3.1

- **C# for Visual Studio Code (powered by OmniSharp)**.\
  - https://channel9.msdn.com/Blogs/dotnet/Get-started-VSCode-Csharp-NET-Core-Windows
  - https://www.youtube.com/watch?v=WeTesTCzep0
  - https://www.youtube.com/watch?v=LXxjCNfd5b4

# <u> iOS Dependencies </u>
- CMake
- XCode
- Valid Apple developer account
- Mono SDK \
  https://www.mono-project.com/download/stable/
- ios-deploy , `brew install ios-deploy`

# <u> Android Dependencies </u>
- Android SDK https://developer.android.com/studio

# <u> Web Dependencies </u>
- Just a working browser
- Browser working live samples can be found in [Urho.Net Feature Samples on Web](https://elix22.itch.io/urhonet-feature-samples)
- Please note that Urho.Network is not supported on Web browsers and will cause unpredictable behavior of the application.

# <u> Getting Started </u>
- General (updated on 31/01/2021)
  - https://youtu.be/LR4M4RMc1qI
- iOS development
  - https://youtu.be/6YZC6N9cIGk
- Android development
  - https://youtu.be/ElMs_jkcLxo
- Web development
  - Building for Web is done via Visual Studio Code editor
  - To build the application for web deployment 
    - Press Ctrl+Shift+P (Cmd+Shift+P on Mac)
    - Choose Tasks: Run Task
    - Choose web-build
    - The build will generate Web folder in the project directory
    - The Web folder contains everything that is needed for web deployment.
    - You can test it on your local browser with the [Live Server extention](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
  - Web support is still in the development phase , you may submit any issues found with a detailed description of the issue and  Browser Console logs.

# Samples 
https://github.com/Urho-Net/Samples

## <u> Urho.Net uses the following third-party libraries: </u>

- Urho3D game engine, Special customized version , this is the main development link of this framework. \
  It contains the entire source code , tools and scripts that allow proper development of this C# Multiplatform game framework.\
  https://github.com/elix22/Urho3D/tree/dotnet

- ReferenceAssemblyResolver , written from scratch, tool that resolves all the reference assembly dependencies that are part of the main Game.dll\
  https://github.com/elix22/ReferenceAssemblyResolver
