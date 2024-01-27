## アプリケーション名
GAMEBOOK

## アプリケーション概要
管理者が投稿した小説をゲーム要素も内包させることで、他者に遊んでもらうことが出来る

## URL
https://gamebook-39761.onrender.com

## テスト用アカウント
・Basic認証パスワード : admin  
・Basic認証ID : 2222  
・管理者用メールアドレス: sample@sample.co.jp  
・管理者用パスワード : zxc123  
・プレイヤーメールアドレス : test@test.co.jp  
・プレイヤーパスワード : asd456

## 利用方法
### 管理者の目標投稿
1.トップページのヘッダーから新規登録を行う  
2.新規登録後トップページに遷移するのでNewgameを選択しステータスを入力する  
3.ステータス入力後再びトップページに遷移するのでLoadを選択  
4.ゲーム内容を投稿できるページに遷移するので画面下部の投稿するを選択  
5.ゲームの内容(ストーリー・遷移させたい番号・アイテムの有無・コインの有無)を入力を投稿する  
6.4と5のを繰り返しゲームのストーリーを構築していく  

### プレイヤーの遊び方
1.トップページのヘッダーから新規登録を行う  
2.新規登録後トップページに遷移するのでNewgameを選択しステータスを入力する  
3.ステータス入力後再びトップページに遷移するのでLoadを選択  
4.ゲーム内容を投稿できるページに遷移するが冒険に出るのみ表示されるので選択する  
5.管理者が投稿したゲーム内容に遷移するので物語を読みながら遷移先を決めながら進めていく  

## アプリケーションを作成した背景
最近、近親者で「ゲームをやってみたい手が出せない」と言ってがいることが判明した。ヒアリングを行ってみたところ「最近のゲームの操作性の高さ」が手が出せない要因になっていると仮説が立てられた。同様の悩みを持っている人は多いと推測し、約40年前に発刊されていたベームブック文庫を参考にライトノベル型のゲームを作成することにした。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1rKI6oXFkCp3c4ss8rzp5fdW_0bm7kp48RzLv3wkyXgE/edit#gid=982722306

## 実装した機能についての画像やGIFおよびその説明
### トップページ
[![Image from Gyazo](https://i.gyazo.com/f0479a43ef99bccaee63ccd3d3001092.jpg)](https://gyazo.com/f0479a43ef99bccaee63ccd3d3001092)
※画像イメージは劇場の舞台

### 新規登録ページ
[![Image from Gyazo](https://i.gyazo.com/a3b7a161a7026cce067711e5ca6b4f6e.jpg)](https://gyazo.com/a3b7a161a7026cce067711e5ca6b4f6e)
※画像イメージは舞台袖

### ログインページ
[![Image from Gyazo](https://i.gyazo.com/a61891eb8ae416b735e97a609f55cc3d.jpg)](https://gyazo.com/a61891eb8ae416b735e97a609f55cc3d)

### ステータス入力画面(Newgame遷移先)
[![Image from Gyazo](https://i.gyazo.com/96c17699cc97160385c92b2453867bf0.jpg)](https://gyazo.com/96c17699cc97160385c92b2453867bf0)
※今後の実装内容に反映させる予定

### ゲーム画面のトップページ(管理者用)
[![Image from Gyazo](https://i.gyazo.com/4faf9d0e1a0296d3833ad7e15ce96ed1.jpg)](https://gyazo.com/4faf9d0e1a0296d3833ad7e15ce96ed1)
※投稿ページの遷移ボタン表示と投稿したストーリーのリストの表示

### 管理者用の物語投稿画面
[![Image from Gyazo](https://i.gyazo.com/4b9a94b4f89f0623eec81bd85ab54513.jpg)](https://gyazo.com/4b9a94b4f89f0623eec81bd85ab54513)

### ゲームのプレイ画面(管理者用)
[![Image from Gyazo](https://i.gyazo.com/44532275efdb4544236d7afc22b9cb96.jpg)](https://gyazo.com/44532275efdb4544236d7afc22b9cb96)
※管理者は投稿した物語の編集と削除が出来るようにリンクが表示される

### 管理者用の物語編集画面
[![Image from Gyazo](https://i.gyazo.com/b7225216bde9509e643fcc4eaaccfead.gif)](https://gyazo.com/b7225216bde9509e643fcc4eaaccfead)
※遷移先を2から3に変更している

### ゲーム画面のトップページ(プレイヤー用)
[![Image from Gyazo](https://i.gyazo.com/8f707262bf2a7d1727a51a7be03f2cd1.jpg)](https://gyazo.com/8f707262bf2a7d1727a51a7be03f2cd1)
※投稿ページの遷移ボタン表示と投稿したストーリーのリストを非表示

### ゲームのプレイ画面(プレイヤー画面)
[![Image from Gyazo](https://i.gyazo.com/5505d2eabd0482561e06cdc69411905a.gif)](https://gyazo.com/5505d2eabd0482561e06cdc69411905a)
※投稿した物語の編集と削除が出来るようにリンクが非表示になる

### ブラウザバックの禁止
[![Image from Gyazo](https://i.gyazo.com/ae207179bf92aa67f222a6fe9a26344d.gif)](https://gyazo.com/ae207179bf92aa67f222a6fe9a26344d)

## 実装予定の機能
・バリデーションと手打ち入力の防止  
・管理者のみの権限をより強固にするための権限実装  
・画面遷移することでゲーム内容に内包されている情報をステータスに反映させるJavascriptの実装  
・ゲーム性を強めるためのENEMY情報の追加  
・管理者以外のゲーム作成、投稿機能

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/c5c07af48b225b397cd3e8b4bc678728.png)](https://gyazo.com/c5c07af48b225b397cd3e8b4bc678728)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/944915e4c29f74c16f725aecdfbbbafe.png)](https://gyazo.com/944915e4c29f74c16f725aecdfbbbafe)

## 開発環境
・Visual Studio Code  
・Ruby  
・Ruby on rails  
・Javascript  
・Ubuntu  
・Render  
・GitHub  

## ローカルでの動作確認
% git clone https://github.com/TercoTuckerd/gamebook-1.git  
% bundle install  
% rails db:create  
% rails db:migrate  
% rails s  

## 工夫したポイント
いかにして膨大な量のページ数を管理するかが制作の上での課題となっていた。  
始めは遷移するページをすべてhtmlで作成するつもりだったがそれでは実装上で問題が発生した場合すべて書き換える必要性がある危険性があったことと、理論上一つのデータベース内に複数同じ名前のhtmlを作らなければならないことに気づき断念した。  
結果として「管理者が投稿したものを他のユーザーが閲覧する」という形にし、管理者という人物を据え置くことでシンプルな構造にすることが出来た。  
ゲームの進行に必要なほとんどのデータを数字にする事で管理がしやすく、編集機能での難易度の調整も可能とした。また今後加えたい機能が出てきた場合もカラムに加えることでよりゲーム性を高めることが出来るため改良していくことに大きな伸びしろがあると思っている。