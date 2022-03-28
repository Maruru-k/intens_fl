import 'package:flutter/material.dart';

// 1. Внутри метода Widget build(BuildContext context)
//      создайте пустой список widgets с типом данных Widget.
//
// 2. Заполните список widgets данными, используя цикл
//      for (int i = 0; i < 300; i += 1){}.
//      Оформление см. на скриншоте в notion.
//      Вам понадобятся виджеты: Row, Text, TextButton и Divider.
//      Внутри строки находятся Text и TextButton.
//        Text. Расположение текста по центру. Текст жирный, размером 40.
//        TextButton. Реализован подсчёт количества нажатий.
//        Надпись внутри кнопки жирная, размером 40.
//      После Row в список widgets добавляется Divider, с thickness: 5.
//
// 3. По умолчанию, метод Widget build(BuildContext context)
//      возвращает контейнер: return Container().
//      Замените контейнер на SingleChildScrollView().
//      Внутрь SingleChildScrollView() поместите Column().
//      Внутрь Column() поместите widgets.
//
// 4. Перейдите к файлу main.dart и запустите его.
//      Проверьте, как кнопки реагируют на нажатия.
//      Почему все кнопки изменяют количество нажатий?
//      Как это изменить?

class ScrollButtons extends StatelessWidget {
  const ScrollButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width /2,
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                itemCount: 300,
                itemBuilder: (_, index) => Button21(i: index),
                separatorBuilder: (context, _) => const Divider(thickness: 1),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2,
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                itemCount: 300,
                itemBuilder: (_, index) => Button21(i: index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button21 extends StatefulWidget {
  int i;

  Button21({
    required this.i,
    Key? key,
  }) : super(key: key);

  @override
  State<Button21> createState() => _Button21State();
}

class _Button21State extends State<Button21> {
  int counters = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "${widget.i}",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              counters++;
              setState(() {});
            },
            child: Text(
              "+$counters",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
