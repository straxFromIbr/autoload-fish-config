# autoload-fish-config
fishの設定ファイルをfisherプラグインとして管理します。

## 使い方
1. 設定ファイルを保存しておくディレクトリを決めてユニバーサル変数に設定してください。  
    例：` set -U _fish_myconf_dir $__fish_config_dir/myconf `

2. fisherプラグインとして管理するため次のようなディレクトリ構成にしてください。
    ```
    .config/fish/myconf
    ├── completions
    │        ├── hoge.fish
    │        └── hige.fish
    ├── conf.d
    │   ├── hoge.fish
    │   └── hige.fish
    └── functions
            ├── hogefunc.fish
            └── higefunc.fish
    ```
3. 設定ファイルを移行してください。
3. 完了！

## 連絡先
- [賀賀(@PotatoHotate) / Twitter](https://twitter.com/PotatoHotate)
