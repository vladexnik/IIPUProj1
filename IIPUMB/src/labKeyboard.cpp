#include "labKeyboard.h"
#include "cstdlib"
#include <QProcess>
#include <iostream>
#include <QString>
#include <QDebug>
#include <QtGui>
#include "unistd.h"

void LabKeyboard::buttonClicked()
{
    QObject* textEdit = viewer->findChild<QObject*>("text6");
    QProcess qqq;
    QMutex mutex;
    mutex.lock();
    mutex.tryLock(1000);
    mutex.unlock();
    qqq.start("xset q");
    qqq.waitForFinished();
    QString outpot(qqq.readAllStandardOutput());
    QStringList List = outpot.split("\n");
    outpot = List.at(3);
    List = outpot.split("   ");
    outpot = List.at(1)+" "+List.at(2)+"\n"+List.at(3)+List.at(4);
    textEdit->setProperty("text", outpot);
    return;
}

void LabKeyboard::buttonClicked1()
{
    QMutex mutex;
    mutex.lock();
    mutex.tryLock(1000);
    mutex.unlock();
    system("xdotool key Caps_Lock");
    system("xdotool key Num_Lock");
}

void LabKeyboard::buttonClicked2()
{
        QProcess qqq;
        qqq.start("xset q");
        qqq.waitForFinished();
        QString outpot(qqq.readAllStandardOutput());
        QStringList List = outpot.split("\n");
        outpot = List.at(3);
        List = outpot.split("   ");
        if (List.at(2)=="off")
        {
            system("xdotool key Caps_Lock");

        }//else
        if (List.at(4)==" off")
        {
            system("xdotool key Num_Lock");

        }
        sleep(4);
        system("xdotool key Caps_Lock");
        system("xdotool key Num_Lock");


}
