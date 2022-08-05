PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
TIME=$(date "+%Y-%m-%d %H:%M:%S")
echo ${SHELL_FOLDER}
Volumes=${SHELL_FOLDER%/MWebLibrary/*}
echo ${Volumes}
ImageFolder=${Volumes}"/HRBlog/Album"
BlogFolder=${Volumes}"/MWebLibrary/HRBlog/Hexo"
HTMLFolder=${Volumes}"/HRBlog"
echo ${ImageFolder}

echo "${python_version}"

echo "--------------------[处理图片]"
# echo ${ImageFolder}
# cd ${ImageFolder}

# source ~/miniconda3/bin/activate HR
# python --version
# python tool.py

echo "--------------------[博客生成]"
echo ${BlogFolder}
cd "${BlogFolder}"
hexo generate

echo "--------------------[提交代码]"
echo ${HTMLFolder}
cd "${HTMLFolder}"
git add .
git commit -m "${TIME}"
git push

echo "🍺🍺🍺完成"
