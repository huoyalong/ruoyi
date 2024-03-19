<<<<<<< HEAD
package com.ruoyi.common.exception.file;

/**
 * 文件名大小限制异常类
 * 
 * @author ruoyi
 */
public class FileSizeLimitExceededException extends FileException
{
    private static final long serialVersionUID = 1L;

    public FileSizeLimitExceededException(long defaultMaxSize)
    {
        super("upload.exceed.maxSize", new Object[] { defaultMaxSize });
    }
}
=======
package com.ruoyi.common.exception.file;

/**
 * 文件名大小限制异常类
 * 
 * @author ruoyi
 */
public class FileSizeLimitExceededException extends FileException
{
    private static final long serialVersionUID = 1L;

    public FileSizeLimitExceededException(long defaultMaxSize)
    {
        super("upload.exceed.maxSize", new Object[] { defaultMaxSize });
    }
}
>>>>>>> 9de45e8c0a3f3bbe1a484d49088fca417a2ee0d8
