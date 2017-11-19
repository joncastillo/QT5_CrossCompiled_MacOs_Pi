/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the QtOrganizer module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl-3.0.html.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 2.0 or (at your option) the GNU General
** Public license version 3 or any later version approved by the KDE Free
** Qt Foundation. The licenses are as published by the Free Software
** Foundation and appearing in the file LICENSE.GPL2 and LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-2.0.html and
** https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

#ifndef QORGANIZERABSTRACTREQUEST_P_H
#define QORGANIZERABSTRACTREQUEST_P_H

//
//  W A R N I N G
//  -------------
//
// This file is not part of the Qt API.  It exists purely as an
// implementation detail.  This header file may change from version to
// version without notice, or even be removed.
//
// We mean it.
//

#include <QtCore/qmutex.h>
#include <QtCore/qpointer.h>

#include <QtOrganizer/qorganizerabstractrequest.h>
#include <QtOrganizer/qorganizermanagerengine.h>
#include <QtOrganizer/private/qorganizermanager_p.h>

QT_BEGIN_NAMESPACE_ORGANIZER

class QOrganizerAbstractRequestPrivate
{
public:
    QOrganizerAbstractRequestPrivate(QOrganizerAbstractRequest::RequestType type = QOrganizerAbstractRequest::InvalidRequest)
        : m_type(type)
        , m_error(QOrganizerManager::NoError)
        , m_state(QOrganizerAbstractRequest::InactiveState)
        , m_manager(0)
    {
    }

    virtual ~QOrganizerAbstractRequestPrivate()
    {
    }

#ifndef QT_NO_DEBUG_STREAM
    virtual QDebug &debugStreamOut(QDebug &dbg) const = 0;
#endif

    const QOrganizerAbstractRequest::RequestType m_type;

    QOrganizerManager::Error m_error;
    QOrganizerAbstractRequest::State m_state;
    QPointer<QOrganizerManager> m_manager;
    QPointer<QOrganizerManagerEngine> m_engine;

    mutable QMutex m_mutex;
};

QT_END_NAMESPACE_ORGANIZER

#endif // QORGANIZERABSTRACTREQUEST_P_H
