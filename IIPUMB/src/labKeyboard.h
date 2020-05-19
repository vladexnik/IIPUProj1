#ifndef LABKeyboard_H
#define LABKeyboard_H

#include <QObject>
#include <QDebug>

class LabKeyboard : public QObject
{
    Q_OBJECT
public:
    LabKeyboard (QObject *QMLObject) : viewer(QMLObject) {}

signals:

public slots:
    void buttonClicked();
    void buttonClicked1();
    void buttonClicked2();
protected:
    QObject *viewer;
};


#endif // LAB3_H
