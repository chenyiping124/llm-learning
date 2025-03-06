#!/bin/bash

# 虚拟环境路径（修改为你的虚拟环境路径）
VENV_PATH="./venv/bin/activate"
source "$VENV_PATH"

# 感知机
test_perceptron() {
   python3 -m unittest test.test_perceptron
}

# 前馈神经网络
test_ffnn() {
    python3 -m unittest test.test_ffnn
}

# 卷积神经网络
test_cnn() {
    python3 -m unittest test.test_cnn
}

# 主函数
main() {
    case "$1" in
        perceptron)
            test_perceptron
            ;;
        ffnn)
            test_ffnn
            ;;
        cnn)
            test_cnn
            ;;
        *)
            echo "用法: $0 {perceptron|ffnn|cnn}"
            exit 1
            ;;
    esac
}

# 执行主函数
main "$@"