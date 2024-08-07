# FROM frolvlad/alpine-glibc:alpine-3.8

# ## install package
# RUN apk update && \
#     apk upgrade && \
#     apk --no-cache --virtual .build add \
#     bash \
#     openjdk8 \
#     wget 

# ## ENV settings
# ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
# ENV SDK_TOOL_VERSION=sdk-tools-linux-4333796
# ENV ANDROID_HOME=/usr/local/android-sdk-linux
# ENV BUILD_TOOLS_VERSION=30.0.2
# ENV PLATFORMS_VERSION=android-31
# ENV PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin

# # install android sdk tools
# RUN mkdir $ANDROID_HOME && \
#   wget "https://dl.google.com/android/repository/${SDK_TOOL_VERSION}.zip" && \
#   unzip -d $ANDROID_HOME $SDK_TOOL_VERSION.zip && \
#   rm -rf $SDK_TOOL_VERSION.zip

# # agree sdkmanager licenses
# RUN mkdir ~/.android && \
#     touch ~/.android/repositories.cfg
# RUN yes | sdkmanager --licenses

# # install android tools and more
# RUN sdkmanager "tools" "build-tools;${BUILD_TOOLS_VERSION}" "platforms;${PLATFORMS_VERSION}" "platform-tools" "extras;android;m2repository"

# #RUN chmod 755 /home/app/build.sh
# #WORKDIR /
# ##RUN build.sh

# # WORKDIR /home/app
# # RUN ls