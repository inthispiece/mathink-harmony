/*
 * SiYuan - From thought to insight, with agents
 * Copyright (c) 2020-present, b3log.org
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import { Utils } from './Utils';

/**
 * 隐私政策弹窗。
 *
 * 鸣谢 https://github.com/ansen666/PrivacyPolicy
 *
 * @author <a href="https://88250.b3log.org">Liang Ding</a>
 * @version 1.0.0.1, Mar 4, 2025
 * @since 3.1.24
 */
@Component
export default struct PrivacyPolicyDialog {
  cancel = defaultCallback
  confirm = defaultCallback

  build() {
    Stack() {
      Column() {
        Text($r('app.string.simple_user_policy'))
          .fontSize(18)
          .fontColor($r('app.color.title_color'))
          .margin({ top: 30, bottom: 19 })

        Scroll() {
          Text("MathInk 是免费开源的数学笔记实验版。笔迹与笔记默认保存在本机，可离线书写。只有你选择选区并同意联网识别后，选区图片才会发送到你配置的识别网关及 Mathpix；原始笔迹坐标不上传。联网识别可能收费，限额用尽不影响本地笔记。拒绝识别不会影响书写。本机不包含服务商密钥；网关管理员应按公开部署说明关闭改进模型设置，并仅保存计费和请求状态，不记录图片与公式正文。卸载可能移除本地数据，请先导出备份。软件按 AGPL-3.0-or-later 提供，不保证公式正确，确认前请核对原稿。源码、问题反馈及完整协议：https://github.com/inthispiece/math-ink。此文本用于本地实验，商城发行前须补充实际运营主体、联系地址及最终服务信息。")
            .fontSize(16).fontColor($r('app.color.body_color')).margin({ left: 25, right: 25 })
        }.height(260)

        Column() {
          Button($r('app.string.disagree_privacy_policy')).onClick(() => {
            this.cancel();
          }).fontColor($r('app.color.other_color')).fontSize(15).backgroundColor(Color.Transparent)

          Button($r('app.string.agree_privacy_policy'))
            .onClick(() => {
              this.confirm();
            })
            .backgroundColor($r('app.color.start_main_color'))
            .fontColor($r('app.color.white'))
            .fontSize(17)
            .width('80%')
            .margin({ top: 15, bottom: 21 })
        }
      }.backgroundColor($r('app.color.white')).borderRadius(13).width('80%')
    }.width('100%').height('100%').backgroundColor("#4D000000") // 黑色背景 透明度约为 30%
  }
}

function defaultCallback(): void {
}
