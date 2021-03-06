/*
 *
 * 陈德元：



 *
 */
package org.mengyun.tcctransaction.repository;

/**
 * 事务IO异常.
 * Created by hongyuan.wang on 2016/1/26.
 */
public class TransactionIOException extends RuntimeException {

    private static final long serialVersionUID = 6508064607297986329L;

    public TransactionIOException(String message) {
        super(message);
    }

    public TransactionIOException(Throwable e) {
        super(e);
    }
}
