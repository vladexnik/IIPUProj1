#ifndef LABDmesg_H
#define LABDmesg_H

#include <QObject>

#include <QDebug>

class LabDmesg : public QObject
{
    Q_OBJECT
public:
    LabDmesg (QObject *QMLObject) : viewer(QMLObject) {}

signals:

public slots:
    void buttonClicked(int i);
protected:
    QObject *viewer;
};
#endif // LAB1_H
