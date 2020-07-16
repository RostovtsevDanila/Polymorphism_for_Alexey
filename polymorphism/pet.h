#ifndef PET_H
#define PET_H

#include <QObject>

class Pet : public QObject
{
    Q_OBJECT
public:
    explicit Pet(QObject *parent = nullptr);

signals:

};

#endif // PET_H
