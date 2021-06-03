PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
TIME=$(date "+%Y-%m-%d %H:%M:%S")

#cd /Volumes/Huanrong\'s\ SD/HRBlog/Album/
#echo "${python_version}"
#conda activate HR
#python tool.py
echo "--------------------[处理图片]"
source ~/miniconda3/bin/activate HR
python --version
./conda activate HR
cd /Volumes/MWeb/HRBlog/Album/
python tool.py

echo "--------------------[博客生成]"
cd /Volumes/MWeb/HRWeb/HRBlog
hexo generate

echo "--------------------[提交代码]"
cd /Volumes/MWeb/HRBlog
git add .
git commit -m "${TIME}"
git push

echo "🍺🍺🍺完成"
